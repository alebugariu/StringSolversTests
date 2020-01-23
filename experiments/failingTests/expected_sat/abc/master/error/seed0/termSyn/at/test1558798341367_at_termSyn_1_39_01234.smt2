(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.at (int.to.str tmp_int0) (str.to.int tmp_str2)) (str.++ tmp_str8 tmp_str8)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str8 = 
;actual status: not_implemented
;PC: @     0x7fd06d1cb74c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;*** SIGSEGV (@0x0) received by PID 3300 (TID 0x7fd06d7fa740) from PID 0; stack trace: ***
;    @     0x7fd06c24a4b0 (unknown)
;    @     0x7fd06d1cb74c Vlab::Solver::StringFormulaGenerator::visitCharAt()
;    @     0x7fd06d1f0ee6 Vlab::SMT::CharAt::accept()
;    @     0x7fd06d0f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fd06d1ed47b Vlab::SMT::Eq::visit_children()
;    @     0x7fd06d0f39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd06d1c29aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7fd06d1ed450 Vlab::SMT::Eq::accept()
;    @     0x7fd06d0f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fd06d1f8f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd06d1ebb87 Vlab::SMT::And::visit_children()
;    @     0x7fd06d0f39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd06d1c19ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7fd06d1ebb5c Vlab::SMT::And::accept()
;    @     0x7fd06d0f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fd06d1e9ddf Vlab::SMT::Assert::visit_children()
;    @     0x7fd06d0f39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd06d1c1739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7fd06d1e9d2a Vlab::SMT::Assert::accept()
;    @     0x7fd06d0f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fd06d1f8699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fd06d1e9067 Vlab::SMT::Script::visit_children()
;    @     0x7fd06d0f39e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fd06d1c1703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7fd06d1e903c Vlab::SMT::Script::accept()
;    @     0x7fd06d0f39ad Vlab::SMT::Visitor::visit()
;    @     0x7fd06d1c1669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7fd06d1d0ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7fd06d1d57a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7fd06d0d9b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fd06c235830 __libc_start_main
