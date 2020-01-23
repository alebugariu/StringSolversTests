(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.++ tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7fba7128ff46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3344 (TID 0x7fba718c1740) from PID 0; stack trace: ***
;    @     0x7fba703114b0 (unknown)
;    @     0x7fba7128ff46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7fba712b576c Vlab::SMT::Concat::accept()
;    @     0x7fba711ba9ad Vlab::SMT::Visitor::visit()
;    @     0x7fba712b447b Vlab::SMT::Eq::visit_children()
;    @     0x7fba711ba9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fba712899aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7fba712b4450 Vlab::SMT::Eq::accept()
;    @     0x7fba711ba9ad Vlab::SMT::Visitor::visit()
;    @     0x7fba712bff79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fba712b2b87 Vlab::SMT::And::visit_children()
;    @     0x7fba711ba9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fba712889ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7fba712b2b5c Vlab::SMT::And::accept()
;    @     0x7fba711ba9ad Vlab::SMT::Visitor::visit()
;    @     0x7fba712b0ddf Vlab::SMT::Assert::visit_children()
;    @     0x7fba711ba9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fba71288739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7fba712b0d2a Vlab::SMT::Assert::accept()
;    @     0x7fba711ba9ad Vlab::SMT::Visitor::visit()
;    @     0x7fba712bf699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fba712b0067 Vlab::SMT::Script::visit_children()
;    @     0x7fba711ba9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fba71288703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7fba712b003c Vlab::SMT::Script::accept()
;    @     0x7fba711ba9ad Vlab::SMT::Visitor::visit()
;    @     0x7fba71288669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7fba71297ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7fba7129c7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7fba711a0b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7fba702fc830 __libc_start_main
