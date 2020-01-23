(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fbcba3cbed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2368 (TID 0x7fbd397b9740) from PID 0; stack trace: ***
;    @     0x7fbd382094b0 (unknown)
;    @     0x7fbcba3cbed6 dfaProject
;    @     0x7fbd391db7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fbd3926d318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fbd39164f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fbd391b1400 Vlab::SMT::Replace::accept()
;    @     0x7fbd390b29ad Vlab::SMT::Visitor::visit()
;    @     0x7fbd3915f7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fbd391ac450 Vlab::SMT::Eq::accept()
;    @     0x7fbd390b29ad Vlab::SMT::Visitor::visit()
;    @     0x7fbd3915d878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fbd3919e5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fbd3919596e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fbd391aab5c Vlab::SMT::And::accept()
;    @     0x7fbd390b29ad Vlab::SMT::Visitor::visit()
;    @     0x7fbd3919ea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fbd39194d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fbd391a8d2a Vlab::SMT::Assert::accept()
;    @     0x7fbd390b29ad Vlab::SMT::Visitor::visit()
;    @     0x7fbd391b7699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fbd391a8067 Vlab::SMT::Script::visit_children()
;    @     0x7fbd390b29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fbd39194b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fbd391a803c Vlab::SMT::Script::accept()
;    @     0x7fbd390b29ad Vlab::SMT::Visitor::visit()
;    @     0x7fbd391947bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fbd39098b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fbd381f4830 __libc_start_main
;    @           0x40de89 _start
