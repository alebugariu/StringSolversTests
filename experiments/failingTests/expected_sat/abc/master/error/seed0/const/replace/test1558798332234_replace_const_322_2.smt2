(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "a-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f800b4dfed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2427 (TID 0x7f808a8cd740) from PID 0; stack trace: ***
;    @     0x7f808931d4b0 (unknown)
;    @     0x7f800b4dfed6 dfaProject
;    @     0x7f808a2ef7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f808a381318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f808a278f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f808a2c5400 Vlab::SMT::Replace::accept()
;    @     0x7f808a1c69ad Vlab::SMT::Visitor::visit()
;    @     0x7f808a2737f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f808a2c0450 Vlab::SMT::Eq::accept()
;    @     0x7f808a1c69ad Vlab::SMT::Visitor::visit()
;    @     0x7f808a271878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f808a2b25ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f808a2a996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f808a2beb5c Vlab::SMT::And::accept()
;    @     0x7f808a1c69ad Vlab::SMT::Visitor::visit()
;    @     0x7f808a2b2a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f808a2a8d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f808a2bcd2a Vlab::SMT::Assert::accept()
;    @     0x7f808a1c69ad Vlab::SMT::Visitor::visit()
;    @     0x7f808a2cb699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f808a2bc067 Vlab::SMT::Script::visit_children()
;    @     0x7f808a1c69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f808a2a8b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f808a2bc03c Vlab::SMT::Script::accept()
;    @     0x7f808a1c69ad Vlab::SMT::Visitor::visit()
;    @     0x7f808a2a87bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f808a1acb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8089308830 __libc_start_main
;    @           0x40de89 _start
