(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "-1" "" tmp_str2) "-1"))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @     0x7f8f67c76ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2505 (TID 0x7f8fe7064740) from PID 0; stack trace: ***
;    @     0x7f8fe5ab44b0 (unknown)
;    @     0x7f8f67c76ed6 dfaProject
;    @     0x7f8fe6a867ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f8fe6b18318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f8fe6a0ff05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f8fe6a5c400 Vlab::SMT::Replace::accept()
;    @     0x7f8fe695d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8fe6a0a7f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8fe6a57450 Vlab::SMT::Eq::accept()
;    @     0x7f8fe695d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8fe6a08878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8fe6a495ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8fe6a4096e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8fe6a55b5c Vlab::SMT::And::accept()
;    @     0x7f8fe695d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8fe6a49a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8fe6a3fd2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8fe6a53d2a Vlab::SMT::Assert::accept()
;    @     0x7f8fe695d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8fe6a62699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8fe6a53067 Vlab::SMT::Script::visit_children()
;    @     0x7f8fe695d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8fe6a3fb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8fe6a5303c Vlab::SMT::Script::accept()
;    @     0x7f8fe695d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8fe6a3f7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8fe6943b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8fe5a9f830 __libc_start_main
;    @           0x40de89 _start
