(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\"-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f1a48ea4ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2308 (TID 0x7f1ac8292740) from PID 0; stack trace: ***
;    @     0x7f1ac6ce24b0 (unknown)
;    @     0x7f1a48ea4ed6 dfaProject
;    @     0x7f1ac7cb47ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f1ac7d46318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f1ac7c3df05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f1ac7c8a400 Vlab::SMT::Replace::accept()
;    @     0x7f1ac7b8b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1ac7c387f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f1ac7c85450 Vlab::SMT::Eq::accept()
;    @     0x7f1ac7b8b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1ac7c36878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f1ac7c775ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f1ac7c6e96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1ac7c83b5c Vlab::SMT::And::accept()
;    @     0x7f1ac7b8b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1ac7c77a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1ac7c6dd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1ac7c81d2a Vlab::SMT::Assert::accept()
;    @     0x7f1ac7b8b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1ac7c90699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1ac7c81067 Vlab::SMT::Script::visit_children()
;    @     0x7f1ac7b8b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1ac7c6db35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f1ac7c8103c Vlab::SMT::Script::accept()
;    @     0x7f1ac7b8b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1ac7c6d7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1ac7b71b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f1ac6ccd830 __libc_start_main
;    @           0x40de89 _start
