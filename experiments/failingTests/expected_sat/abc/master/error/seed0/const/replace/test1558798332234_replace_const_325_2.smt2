(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "-1-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = -1
;actual status: not_implemented
;PC: @     0x7fa6d5deced6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2410 (TID 0x7fa7551da740) from PID 0; stack trace: ***
;    @     0x7fa753c2a4b0 (unknown)
;    @     0x7fa6d5deced6 dfaProject
;    @     0x7fa754bfc7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fa754c8e318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fa754b85f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa754bd2400 Vlab::SMT::Replace::accept()
;    @     0x7fa754ad39ad Vlab::SMT::Visitor::visit()
;    @     0x7fa754b807f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa754bcd450 Vlab::SMT::Eq::accept()
;    @     0x7fa754ad39ad Vlab::SMT::Visitor::visit()
;    @     0x7fa754b7e878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa754bbf5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa754bb696e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa754bcbb5c Vlab::SMT::And::accept()
;    @     0x7fa754ad39ad Vlab::SMT::Visitor::visit()
;    @     0x7fa754bbfa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa754bb5d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa754bc9d2a Vlab::SMT::Assert::accept()
;    @     0x7fa754ad39ad Vlab::SMT::Visitor::visit()
;    @     0x7fa754bd8699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa754bc9067 Vlab::SMT::Script::visit_children()
;    @     0x7fa754ad39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa754bb5b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa754bc903c Vlab::SMT::Script::accept()
;    @     0x7fa754ad39ad Vlab::SMT::Visitor::visit()
;    @     0x7fa754bb57bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa754ab9b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fa753c15830 __libc_start_main
;    @           0x40de89 _start
