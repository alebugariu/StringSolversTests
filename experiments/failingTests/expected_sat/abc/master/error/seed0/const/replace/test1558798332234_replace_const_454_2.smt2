(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "02"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f6ba8bc4ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2269 (TID 0x7f6c27fb2740) from PID 0; stack trace: ***
;    @     0x7f6c26a024b0 (unknown)
;    @     0x7f6ba8bc4ed6 dfaProject
;    @     0x7f6c279d47ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f6c27a66318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f6c2795df05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f6c279aa400 Vlab::SMT::Replace::accept()
;    @     0x7f6c278ab9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6c279587f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f6c279a5450 Vlab::SMT::Eq::accept()
;    @     0x7f6c278ab9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6c27956878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f6c279975ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f6c2798e96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f6c279a3b5c Vlab::SMT::And::accept()
;    @     0x7f6c278ab9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6c27997a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f6c2798dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f6c279a1d2a Vlab::SMT::Assert::accept()
;    @     0x7f6c278ab9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6c279b0699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f6c279a1067 Vlab::SMT::Script::visit_children()
;    @     0x7f6c278ab9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f6c2798db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f6c279a103c Vlab::SMT::Script::accept()
;    @     0x7f6c278ab9ad Vlab::SMT::Visitor::visit()
;    @     0x7f6c2798d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f6c27891b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f6c269ed830 __libc_start_main
;    @           0x40de89 _start
