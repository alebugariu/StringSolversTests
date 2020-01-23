(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace "" "" tmp_str2) "\"a\""))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = "a"
;actual status: not_implemented
;PC: @     0x7f8cfc2e5ed6 dfaProject
;*** SIGSEGV (@0x0) received by PID 2384 (TID 0x7f8d7b6d3740) from PID 0; stack trace: ***
;    @     0x7f8d7a1234b0 (unknown)
;    @     0x7f8cfc2e5ed6 dfaProject
;    @     0x7f8d7b0f57ce Vlab::Theory::Automaton::DFAProjectAway()
;    @     0x7f8d7b187318 Vlab::Theory::StringAutomaton::PreReplace()
;    @     0x7f8d7b07ef05 Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f8d7b0cb400 Vlab::SMT::Replace::accept()
;    @     0x7f8d7afcc9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8d7b0797f6 Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f8d7b0c6450 Vlab::SMT::Eq::accept()
;    @     0x7f8d7afcc9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8d7b077878 Vlab::Solver::VariableValueComputer::start()
;    @     0x7f8d7b0b85ef Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f8d7b0af96e Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8d7b0c4b5c Vlab::SMT::And::accept()
;    @     0x7f8d7afcc9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8d7b0b8a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8d7b0aed2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8d7b0c2d2a Vlab::SMT::Assert::accept()
;    @     0x7f8d7afcc9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8d7b0d1699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8d7b0c2067 Vlab::SMT::Script::visit_children()
;    @     0x7f8d7afcc9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8d7b0aeb35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f8d7b0c203c Vlab::SMT::Script::accept()
;    @     0x7f8d7afcc9ad Vlab::SMT::Visitor::visit()
;    @     0x7f8d7b0ae7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8d7afb2b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8d7a10e830 __libc_start_main
;    @           0x40de89 _start
