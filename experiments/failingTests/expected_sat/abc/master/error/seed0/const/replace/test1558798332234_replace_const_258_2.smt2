(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "a\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f2cf28bfed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2562 (TID 0x7f2d71cad740) from PID 0; stack trace: ***
;    @     0x7f2d706fd4b0 (unknown)
;    @     0x7f2cf28bfed6 dfaProject
;    @     0x7f2d716cf7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f2d71761318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f2d71658f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f2d716a5400 Vlab::SMT::Replace::accept()
;    @     0x7f2d715a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f2d716537f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f2d716a0450 Vlab::SMT::Eq::accept()
;    @     0x7f2d715a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f2d71651878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f2d716925ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f2d7168996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f2d7169eb5c Vlab::SMT::And::accept()
;    @     0x7f2d715a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f2d71692a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2d71688d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f2d7169cd2a Vlab::SMT::Assert::accept()
;    @     0x7f2d715a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f2d716ab699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2d7169c067 Vlab::SMT::Script::visit_children()
;    @     0x7f2d715a69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2d71688b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f2d7169c03c Vlab::SMT::Script::accept()
;    @     0x7f2d715a69ad Vlab::SMT::Visitor::visit()
;    @     0x7f2d716887bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2d7158cb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f2d706e8830 __libc_start_main
;    @           0x40de89 _start
