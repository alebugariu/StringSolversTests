(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f1af9b44ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2318 (TID 0x7f1b78f32740) from PID 0; stack trace: ***
;    @     0x7f1b779824b0 (unknown)
;    @     0x7f1af9b44ed6 dfaProject
;    @     0x7f1b789547ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f1b789e6318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f1b788ddf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f1b7892a400 Vlab::SMT::Replace::accept()
;    @     0x7f1b7882b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1b788d87f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1b78925450 Vlab::SMT::Eq::accept()
;    @     0x7f1b7882b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1b788d6878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f1b789175ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f1b7890e96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1b78923b5c Vlab::SMT::And::accept()
;    @     0x7f1b7882b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1b78917a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1b7890dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1b78921d2a Vlab::SMT::Assert::accept()
;    @     0x7f1b7882b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1b78930699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1b78921067 Vlab::SMT::Script::visit_children()
;    @     0x7f1b7882b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1b7890db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f1b7892103c Vlab::SMT::Script::accept()
;    @     0x7f1b7882b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1b7890d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1b78811b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f1b7796d830 __libc_start_main
;    @           0x40de89 _start
