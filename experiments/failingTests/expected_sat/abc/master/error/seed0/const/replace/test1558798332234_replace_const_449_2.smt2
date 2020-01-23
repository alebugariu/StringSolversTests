(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "2" "" tmp_str2) "\"a\"2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fd7459b3ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2303 (TID 0x7fd7c4da1740) from PID 0; stack trace: ***
;    @     0x7fd7c37f14b0 (unknown)
;    @     0x7fd7459b3ed6 dfaProject
;    @     0x7fd7c47c37ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fd7c4855318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fd7c474cf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fd7c4799400 Vlab::SMT::Replace::accept()
;    @     0x7fd7c469a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd7c47477f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fd7c4794450 Vlab::SMT::Eq::accept()
;    @     0x7fd7c469a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd7c4745878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fd7c47865ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fd7c477d96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fd7c4792b5c Vlab::SMT::And::accept()
;    @     0x7fd7c469a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd7c4786a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fd7c477cd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fd7c4790d2a Vlab::SMT::Assert::accept()
;    @     0x7fd7c469a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd7c479f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd7c4790067 Vlab::SMT::Script::visit_children()
;    @     0x7fd7c469a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd7c477cb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fd7c479003c Vlab::SMT::Script::accept()
;    @     0x7fd7c469a9ad Vlab::SMT::Visitor::visit()
;    @     0x7fd7c477c7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd7c4680b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fd7c37dc830 __libc_start_main
;    @           0x40de89 _start
