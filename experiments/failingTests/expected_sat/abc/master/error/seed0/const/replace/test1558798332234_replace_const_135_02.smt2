(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "2a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = 2
;actual status: not_implemented
;PC: @     0x7fd12dfd8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2498 (TID 0x7fd1ad3c6740) from PID 0; stack trace: ***
;    @     0x7fd1abe164b0 (unknown)
;    @     0x7fd12dfd8ed6 dfaProject
;    @     0x7fd1acde87ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fd1ace7a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fd1acd71f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fd1acdbe400 Vlab::SMT::Replace::accept()
;    @     0x7fd1accbf9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd1acd6c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd1acdb9450 Vlab::SMT::Eq::accept()
;    @     0x7fd1accbf9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd1acd6a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd1acdab5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd1acda296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd1acdb7b5c Vlab::SMT::And::accept()
;    @     0x7fd1accbf9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd1acdaba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd1acda1d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd1acdb5d2a Vlab::SMT::Assert::accept()
;    @     0x7fd1accbf9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd1acdc4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd1acdb5067 Vlab::SMT::Script::visit_children()
;    @     0x7fd1accbf9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd1acda1b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd1acdb503c Vlab::SMT::Script::accept()
;    @     0x7fd1accbf9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd1acda17bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd1acca5b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fd1abe01830 __libc_start_main
;    @           0x40de89 _start
