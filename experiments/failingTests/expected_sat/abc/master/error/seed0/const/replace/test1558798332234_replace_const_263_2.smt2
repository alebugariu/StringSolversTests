(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) "2\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7fafefae5ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2412 (TID 0x7fb06eed3740) from PID 0; stack trace: ***
;    @     0x7fb06d9234b0 (unknown)
;    @     0x7fafefae5ed6 dfaProject
;    @     0x7fb06e8f57ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fb06e987318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fb06e87ef05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fb06e8cb400 Vlab::SMT::Replace::accept()
;    @     0x7fb06e7cc9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06e8797f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fb06e8c6450 Vlab::SMT::Eq::accept()
;    @     0x7fb06e7cc9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06e877878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fb06e8b85ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fb06e8af96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb06e8c4b5c Vlab::SMT::And::accept()
;    @     0x7fb06e7cc9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06e8b8a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb06e8aed2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb06e8c2d2a Vlab::SMT::Assert::accept()
;    @     0x7fb06e7cc9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06e8d1699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb06e8c2067 Vlab::SMT::Script::visit_children()
;    @     0x7fb06e7cc9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fb06e8aeb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fb06e8c203c Vlab::SMT::Script::accept()
;    @     0x7fb06e7cc9ad Vlab::SMT::Visitor::visit()
;    @     0x7fb06e8ae7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fb06e7b2b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fb06d90e830 __libc_start_main
;    @           0x40de89 _start
