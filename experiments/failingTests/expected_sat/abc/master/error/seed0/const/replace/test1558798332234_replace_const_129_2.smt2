(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) "\"a\"a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f6764864ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2581 (TID 0x7f67e3c52740) from PID 0; stack trace: ***
;    @     0x7f67e26a24b0 (unknown)
;    @     0x7f6764864ed6 dfaProject
;    @     0x7f67e36747ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f67e3706318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f67e35fdf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f67e364a400 Vlab::SMT::Replace::accept()
;    @     0x7f67e354b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67e35f87f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f67e3645450 Vlab::SMT::Eq::accept()
;    @     0x7f67e354b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67e35f6878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f67e36375ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f67e362e96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f67e3643b5c Vlab::SMT::And::accept()
;    @     0x7f67e354b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67e3637a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f67e362dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f67e3641d2a Vlab::SMT::Assert::accept()
;    @     0x7f67e354b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67e3650699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f67e3641067 Vlab::SMT::Script::visit_children()
;    @     0x7f67e354b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f67e362db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f67e364103c Vlab::SMT::Script::accept()
;    @     0x7f67e354b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f67e362d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f67e3531b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f67e268d830 __libc_start_main
;    @           0x40de89 _start
