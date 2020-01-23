(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f5fb573fed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2401 (TID 0x7f6034b2d740) from PID 0; stack trace: ***
;    @     0x7f603357d4b0 (unknown)
;    @     0x7f5fb573fed6 dfaProject
;    @     0x7f603454f7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f60345e1318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f60344d8f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6034525400 Vlab::SMT::Replace::accept()
;    @     0x7f60344269ad Vlab::SMT::Visitor::visit()
;    @     0x7f60344d37f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6034520450 Vlab::SMT::Eq::accept()
;    @     0x7f60344269ad Vlab::SMT::Visitor::visit()
;    @     0x7f60344d1878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f60345125ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f603450996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f603451eb5c Vlab::SMT::And::accept()
;    @     0x7f60344269ad Vlab::SMT::Visitor::visit()
;    @     0x7f6034512a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6034508d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f603451cd2a Vlab::SMT::Assert::accept()
;    @     0x7f60344269ad Vlab::SMT::Visitor::visit()
;    @     0x7f603452b699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f603451c067 Vlab::SMT::Script::visit_children()
;    @     0x7f60344269e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6034508b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f603451c03c Vlab::SMT::Script::accept()
;    @     0x7f60344269ad Vlab::SMT::Visitor::visit()
;    @     0x7f60345087bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f603440cb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6033568830 __libc_start_main
;    @           0x40de89 _start
