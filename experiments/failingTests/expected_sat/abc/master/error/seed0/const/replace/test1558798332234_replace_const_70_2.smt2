(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\"a\"" "" tmp_str2) "0\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f854c77eed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2620 (TID 0x7f85cbb6c740) from PID 0; stack trace: ***
;    @     0x7f85ca5bc4b0 (unknown)
;    @     0x7f854c77eed6 dfaProject
;    @     0x7f85cb58e7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f85cb620318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f85cb517f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f85cb564400 Vlab::SMT::Replace::accept()
;    @     0x7f85cb4659ad Vlab::SMT::Visitor::visit()
;    @     0x7f85cb5127f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f85cb55f450 Vlab::SMT::Eq::accept()
;    @     0x7f85cb4659ad Vlab::SMT::Visitor::visit()
;    @     0x7f85cb510878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f85cb5515ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f85cb54896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f85cb55db5c Vlab::SMT::And::accept()
;    @     0x7f85cb4659ad Vlab::SMT::Visitor::visit()
;    @     0x7f85cb551a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f85cb547d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f85cb55bd2a Vlab::SMT::Assert::accept()
;    @     0x7f85cb4659ad Vlab::SMT::Visitor::visit()
;    @     0x7f85cb56a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f85cb55b067 Vlab::SMT::Script::visit_children()
;    @     0x7f85cb4659e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f85cb547b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f85cb55b03c Vlab::SMT::Script::accept()
;    @     0x7f85cb4659ad Vlab::SMT::Visitor::visit()
;    @     0x7f85cb5477bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f85cb44bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f85ca5a7830 __libc_start_main
;    @           0x40de89 _start
