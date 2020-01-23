(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "\n" "" tmp_str2) tmp_str3))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;tmp_str3 = \n
;actual status: not_implemented
;PC: @     0x7f82be4b8ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2325 (TID 0x7f833d8a6740) from PID 0; stack trace: ***
;    @     0x7f833c2f64b0 (unknown)
;    @     0x7f82be4b8ed6 dfaProject
;    @     0x7f833d2c87ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f833d35a318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f833d251f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f833d29e400 Vlab::SMT::Replace::accept()
;    @     0x7f833d19f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f833d24c7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f833d299450 Vlab::SMT::Eq::accept()
;    @     0x7f833d19f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f833d24a878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f833d28b5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f833d28296e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f833d297b5c Vlab::SMT::And::accept()
;    @     0x7f833d19f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f833d28ba82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f833d281d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f833d295d2a Vlab::SMT::Assert::accept()
;    @     0x7f833d19f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f833d2a4699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f833d295067 Vlab::SMT::Script::visit_children()
;    @     0x7f833d19f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f833d281b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f833d29503c Vlab::SMT::Script::accept()
;    @     0x7f833d19f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f833d2817bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f833d185b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f833c2e1830 __libc_start_main
;    @           0x40de89 _start
