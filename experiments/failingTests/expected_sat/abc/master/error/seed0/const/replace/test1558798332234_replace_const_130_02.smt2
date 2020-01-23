(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "aa"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7ff91bbeeed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2298 (TID 0x7ff99afdc740) from PID 0; stack trace: ***
;    @     0x7ff999a2c4b0 (unknown)
;    @     0x7ff91bbeeed6 dfaProject
;    @     0x7ff99a9fe7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7ff99aa90318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7ff99a987f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7ff99a9d4400 Vlab::SMT::Replace::accept()
;    @     0x7ff99a8d59ad Vlab::SMT::Visitor::visit()
;    @     0x7ff99a9827f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7ff99a9cf450 Vlab::SMT::Eq::accept()
;    @     0x7ff99a8d59ad Vlab::SMT::Visitor::visit()
;    @     0x7ff99a980878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7ff99a9c15ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7ff99a9b896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff99a9cdb5c Vlab::SMT::And::accept()
;    @     0x7ff99a8d59ad Vlab::SMT::Visitor::visit()
;    @     0x7ff99a9c1a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff99a9b7d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff99a9cbd2a Vlab::SMT::Assert::accept()
;    @     0x7ff99a8d59ad Vlab::SMT::Visitor::visit()
;    @     0x7ff99a9da699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff99a9cb067 Vlab::SMT::Script::visit_children()
;    @     0x7ff99a8d59e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff99a9b7b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7ff99a9cb03c Vlab::SMT::Script::accept()
;    @     0x7ff99a8d59ad Vlab::SMT::Visitor::visit()
;    @     0x7ff99a9b77bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7ff99a8bbb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7ff999a17830 __libc_start_main
;    @           0x40de89 _start
