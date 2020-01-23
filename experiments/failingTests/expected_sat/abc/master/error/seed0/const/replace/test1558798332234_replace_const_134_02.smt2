(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "0a"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7f5bb0fb3ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2390 (TID 0x7f5c303a1740) from PID 0; stack trace: ***
;    @     0x7f5c2edf14b0 (unknown)
;    @     0x7f5bb0fb3ed6 dfaProject
;    @     0x7f5c2fdc37ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f5c2fe55318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f5c2fd4cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f5c2fd99400 Vlab::SMT::Replace::accept()
;    @     0x7f5c2fc9a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5c2fd477f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5c2fd94450 Vlab::SMT::Eq::accept()
;    @     0x7f5c2fc9a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5c2fd45878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5c2fd865ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5c2fd7d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5c2fd92b5c Vlab::SMT::And::accept()
;    @     0x7f5c2fc9a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5c2fd86a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5c2fd7cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5c2fd90d2a Vlab::SMT::Assert::accept()
;    @     0x7f5c2fc9a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5c2fd9f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5c2fd90067 Vlab::SMT::Script::visit_children()
;    @     0x7f5c2fc9a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5c2fd7cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5c2fd9003c Vlab::SMT::Script::accept()
;    @     0x7f5c2fc9a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f5c2fd7c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f5c2fc80b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f5c2eddc830 __libc_start_main
;    @           0x40de89 _start
