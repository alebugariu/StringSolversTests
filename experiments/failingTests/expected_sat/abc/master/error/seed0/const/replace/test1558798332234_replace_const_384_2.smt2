(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "0" "" tmp_str2) "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f35f3d61ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2376 (TID 0x7f367314f740) from PID 0; stack trace: ***
;    @     0x7f3671b9f4b0 (unknown)
;    @     0x7f35f3d61ed6 dfaProject
;    @     0x7f3672b717ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f3672c03318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f3672afaf05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f3672b47400 Vlab::SMT::Replace::accept()
;    @     0x7f3672a489ad Vlab::SMT::Visitor::visit()
;    @     0x7f3672af57f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f3672b42450 Vlab::SMT::Eq::accept()
;    @     0x7f3672a489ad Vlab::SMT::Visitor::visit()
;    @     0x7f3672af3878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f3672b345ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f3672b2b96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3672b40b5c Vlab::SMT::And::accept()
;    @     0x7f3672a489ad Vlab::SMT::Visitor::visit()
;    @     0x7f3672b34a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3672b2ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3672b3ed2a Vlab::SMT::Assert::accept()
;    @     0x7f3672a489ad Vlab::SMT::Visitor::visit()
;    @     0x7f3672b4d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3672b3e067 Vlab::SMT::Script::visit_children()
;    @     0x7f3672a489e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3672b2ab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f3672b3e03c Vlab::SMT::Script::accept()
;    @     0x7f3672a489ad Vlab::SMT::Visitor::visit()
;    @     0x7f3672b2a7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f3672a2eb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f3671b8a830 __libc_start_main
;    @           0x40de89 _start
