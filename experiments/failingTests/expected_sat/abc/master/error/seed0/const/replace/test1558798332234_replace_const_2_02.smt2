(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f8ae02efed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2399 (TID 0x7f8b5f6dd740) from PID 0; stack trace: ***
;    @     0x7f8b5e12d4b0 (unknown)
;    @     0x7f8ae02efed6 dfaProject
;    @     0x7f8b5f0ff7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f8b5f191318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f8b5f088f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f8b5f0d5400 Vlab::SMT::Replace::accept()
;    @     0x7f8b5efd69ad Vlab::SMT::Visitor::visit()
;    @     0x7f8b5f0837f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8b5f0d0450 Vlab::SMT::Eq::accept()
;    @     0x7f8b5efd69ad Vlab::SMT::Visitor::visit()
;    @     0x7f8b5f081878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8b5f0c25ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8b5f0b996e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8b5f0ceb5c Vlab::SMT::And::accept()
;    @     0x7f8b5efd69ad Vlab::SMT::Visitor::visit()
;    @     0x7f8b5f0c2a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8b5f0b8d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8b5f0ccd2a Vlab::SMT::Assert::accept()
;    @     0x7f8b5efd69ad Vlab::SMT::Visitor::visit()
;    @     0x7f8b5f0db699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8b5f0cc067 Vlab::SMT::Script::visit_children()
;    @     0x7f8b5efd69e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8b5f0b8b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8b5f0cc03c Vlab::SMT::Script::accept()
;    @     0x7f8b5efd69ad Vlab::SMT::Visitor::visit()
;    @     0x7f8b5f0b87bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8b5efbcb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8b5e118830 __libc_start_main
;    @           0x40de89 _start
