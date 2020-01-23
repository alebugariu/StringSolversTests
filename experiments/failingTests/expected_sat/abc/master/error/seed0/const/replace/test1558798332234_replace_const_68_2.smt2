(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "\n\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7f5731348ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2613 (TID 0x7f57b0736740) from PID 0; stack trace: ***
;    @     0x7f57af1864b0 (unknown)
;    @     0x7f5731348ed6 dfaProject
;    @     0x7f57b01587ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f57b01ea318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f57b00e1f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f57b012e400 Vlab::SMT::Replace::accept()
;    @     0x7f57b002f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f57b00dc7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f57b0129450 Vlab::SMT::Eq::accept()
;    @     0x7f57b002f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f57b00da878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f57b011b5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f57b011296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f57b0127b5c Vlab::SMT::And::accept()
;    @     0x7f57b002f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f57b011ba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f57b0111d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f57b0125d2a Vlab::SMT::Assert::accept()
;    @     0x7f57b002f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f57b0134699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f57b0125067 Vlab::SMT::Script::visit_children()
;    @     0x7f57b002f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f57b0111b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f57b012503c Vlab::SMT::Script::accept()
;    @     0x7f57b002f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f57b01117bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f57b0015b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f57af171830 __libc_start_main
;    @           0x40de89 _start
