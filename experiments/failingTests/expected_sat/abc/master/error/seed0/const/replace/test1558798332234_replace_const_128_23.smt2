(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "a" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = a
;actual status: not_implemented
;PC: @     0x7f4fcbb2bed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2287 (TID 0x7f504af19740) from PID 0; stack trace: ***
;    @     0x7f50499694b0 (unknown)
;    @     0x7f4fcbb2bed6 dfaProject
;    @     0x7f504a93b7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f504a9cd318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f504a8c4f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f504a911400 Vlab::SMT::Replace::accept()
;    @     0x7f504a8129ad Vlab::SMT::Visitor::visit()
;    @     0x7f504a8bf7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f504a90c450 Vlab::SMT::Eq::accept()
;    @     0x7f504a8129ad Vlab::SMT::Visitor::visit()
;    @     0x7f504a8bd878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f504a8fe5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f504a8f596e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f504a90ab5c Vlab::SMT::And::accept()
;    @     0x7f504a8129ad Vlab::SMT::Visitor::visit()
;    @     0x7f504a8fea82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f504a8f4d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f504a908d2a Vlab::SMT::Assert::accept()
;    @     0x7f504a8129ad Vlab::SMT::Visitor::visit()
;    @     0x7f504a917699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f504a908067 Vlab::SMT::Script::visit_children()
;    @     0x7f504a8129e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f504a8f4b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f504a90803c Vlab::SMT::Script::accept()
;    @     0x7f504a8129ad Vlab::SMT::Visitor::visit()
;    @     0x7f504a8f47bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f504a7f8b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f5049954830 __libc_start_main
;    @           0x40de89 _start
