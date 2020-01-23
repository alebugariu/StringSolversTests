(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = 0
;actual status: not_implemented
;PC: @     0x7f18b109eed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2459 (TID 0x7f193048c740) from PID 0; stack trace: ***
;    @     0x7f192eedc4b0 (unknown)
;    @     0x7f18b109eed6 dfaProject
;    @     0x7f192feae7ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f192ff40318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f192fe37f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f192fe84400 Vlab::SMT::Replace::accept()
;    @     0x7f192fd859ad Vlab::SMT::Visitor::visit()
;    @     0x7f192fe327f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f192fe7f450 Vlab::SMT::Eq::accept()
;    @     0x7f192fd859ad Vlab::SMT::Visitor::visit()
;    @     0x7f192fe30878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f192fe715ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f192fe6896e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f192fe7db5c Vlab::SMT::And::accept()
;    @     0x7f192fd859ad Vlab::SMT::Visitor::visit()
;    @     0x7f192fe71a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f192fe67d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f192fe7bd2a Vlab::SMT::Assert::accept()
;    @     0x7f192fd859ad Vlab::SMT::Visitor::visit()
;    @     0x7f192fe8a699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f192fe7b067 Vlab::SMT::Script::visit_children()
;    @     0x7f192fd859e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f192fe67b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f192fe7b03c Vlab::SMT::Script::accept()
;    @     0x7f192fd859ad Vlab::SMT::Visitor::visit()
;    @     0x7f192fe677bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f192fd6bb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f192eec7830 __libc_start_main
;    @           0x40de89 _start
