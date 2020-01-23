(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "0-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 0
;actual status: not_implemented
;PC: @     0x7ff3b8d8ced6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2380 (TID 0x7ff43817a740) from PID 0; stack trace: ***
;    @     0x7ff436bca4b0 (unknown)
;    @     0x7ff3b8d8ced6 dfaProject
;    @     0x7ff437b9c7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7ff437c2e318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7ff437b25f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7ff437b72400 Vlab::SMT::Replace::accept()
;    @     0x7ff437a739ad Vlab::SMT::Visitor::visit()
;    @     0x7ff437b207f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7ff437b6d450 Vlab::SMT::Eq::accept()
;    @     0x7ff437a739ad Vlab::SMT::Visitor::visit()
;    @     0x7ff437b1e878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7ff437b5f5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7ff437b5696e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff437b6bb5c Vlab::SMT::And::accept()
;    @     0x7ff437a739ad Vlab::SMT::Visitor::visit()
;    @     0x7ff437b5fa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff437b55d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff437b69d2a Vlab::SMT::Assert::accept()
;    @     0x7ff437a739ad Vlab::SMT::Visitor::visit()
;    @     0x7ff437b78699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff437b69067 Vlab::SMT::Script::visit_children()
;    @     0x7ff437a739e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff437b55b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7ff437b6903c Vlab::SMT::Script::accept()
;    @     0x7ff437a739ad Vlab::SMT::Visitor::visit()
;    @     0x7ff437b557bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7ff437a59b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7ff436bb5830 __libc_start_main
;    @           0x40de89 _start
