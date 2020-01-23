(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = \n
;actual status: not_implemented
;PC: @     0x7fc59e7d4ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2475 (TID 0x7fc61dbc2740) from PID 0; stack trace: ***
;    @     0x7fc61c6124b0 (unknown)
;    @     0x7fc59e7d4ed6 dfaProject
;    @     0x7fc61d5e47ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fc61d676318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fc61d56df05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fc61d5ba400 Vlab::SMT::Replace::accept()
;    @     0x7fc61d4bb9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc61d5687f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fc61d5b5450 Vlab::SMT::Eq::accept()
;    @     0x7fc61d4bb9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc61d566878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fc61d5a75ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fc61d59e96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc61d5b3b5c Vlab::SMT::And::accept()
;    @     0x7fc61d4bb9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc61d5a7a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc61d59dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc61d5b1d2a Vlab::SMT::Assert::accept()
;    @     0x7fc61d4bb9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc61d5c0699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc61d5b1067 Vlab::SMT::Script::visit_children()
;    @     0x7fc61d4bb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fc61d59db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fc61d5b103c Vlab::SMT::Script::accept()
;    @     0x7fc61d4bb9ad Vlab::SMT::Visitor::visit()
;    @     0x7fc61d59d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fc61d4a1b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fc61c5fd830 __libc_start_main
;    @           0x40de89 _start
