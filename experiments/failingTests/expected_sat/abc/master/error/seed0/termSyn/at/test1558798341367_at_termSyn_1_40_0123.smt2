(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.at (int.to.str tmp_int0) (str.to.int tmp_str2)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f1e387b274c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;*** SIGSEGV (@0x0) received by PID 3323 (TID 0x7f1e38de1740) from PID 0; stack trace: ***
;    @     0x7f1e378314b0 (unknown)
;    @     0x7f1e387b274c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;    @     0x7f1e387d7ee6 Vlab::SMT::CharAt::accept()
;    @     0x7f1e386da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1e387d447b Vlab::SMT::Eq::visit_children()
;    @     0x7f1e386da9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1e387a99aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f1e387d4450 Vlab::SMT::Eq::accept()
;    @     0x7f1e386da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1e387dff79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1e387d2b87 Vlab::SMT::And::visit_children()
;    @     0x7f1e386da9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1e387a89ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f1e387d2b5c Vlab::SMT::And::accept()
;    @     0x7f1e386da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1e387d0ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f1e386da9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1e387a8739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f1e387d0d2a Vlab::SMT::Assert::accept()
;    @     0x7f1e386da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1e387df699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1e387d0067 Vlab::SMT::Script::visit_children()
;    @     0x7f1e386da9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f1e387a8703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f1e387d003c Vlab::SMT::Script::accept()
;    @     0x7f1e386da9ad Vlab::SMT::Visitor::visit()
;    @     0x7f1e387a8669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f1e387b7ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f1e387bc7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f1e386c0b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f1e3781c830 __libc_start_main
