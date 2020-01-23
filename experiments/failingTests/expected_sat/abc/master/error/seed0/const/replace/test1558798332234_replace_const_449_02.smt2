(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 "" tmp_str2) "\"a\"2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7fa5e2f57ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2601 (TID 0x7fa662345740) from PID 0; stack trace: ***
;    @     0x7fa660d954b0 (unknown)
;    @     0x7fa5e2f57ed6 dfaProject
;    @     0x7fa661d677ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7fa661df9318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7fa661cf0f05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7fa661d3d400 Vlab::SMT::Replace::accept()
;    @     0x7fa661c3e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa661ceb7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fa661d38450 Vlab::SMT::Eq::accept()
;    @     0x7fa661c3e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa661ce9878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7fa661d2a5ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fa661d2196e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa661d36b5c Vlab::SMT::And::accept()
;    @     0x7fa661c3e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa661d2aa82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa661d20d2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa661d34d2a Vlab::SMT::Assert::accept()
;    @     0x7fa661c3e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa661d43699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa661d34067 Vlab::SMT::Script::visit_children()
;    @     0x7fa661c3e9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fa661d20b35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fa661d3403c Vlab::SMT::Script::accept()
;    @     0x7fa661c3e9ad Vlab::SMT::Visitor::visit()
;    @     0x7fa661d207bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fa661c24b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fa660d80830 __libc_start_main
;    @           0x40de89 _start
