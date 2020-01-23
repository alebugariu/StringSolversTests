(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f3ef8c10f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3387 (TID 0x7f3ef9242740) from PID 0; stack trace: ***
;    @     0x7f3ef7c924b0 (unknown)
;    @     0x7f3ef8c10f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f3ef8c3676c Vlab::SMT::Concat::accept()
;    @     0x7f3ef8b3b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ef8c3547b Vlab::SMT::Eq::visit_children()
;    @     0x7f3ef8b3b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3ef8c0a9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f3ef8c35450 Vlab::SMT::Eq::accept()
;    @     0x7f3ef8b3b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ef8c40f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3ef8c33b87 Vlab::SMT::And::visit_children()
;    @     0x7f3ef8b3b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3ef8c099ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f3ef8c33b5c Vlab::SMT::And::accept()
;    @     0x7f3ef8b3b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ef8c31ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f3ef8b3b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3ef8c09739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f3ef8c31d2a Vlab::SMT::Assert::accept()
;    @     0x7f3ef8b3b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ef8c40699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3ef8c31067 Vlab::SMT::Script::visit_children()
;    @     0x7f3ef8b3b9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f3ef8c09703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f3ef8c3103c Vlab::SMT::Script::accept()
;    @     0x7f3ef8b3b9ad Vlab::SMT::Visitor::visit()
;    @     0x7f3ef8c09669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f3ef8c18ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f3ef8c1d7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f3ef8b21b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f3ef7c7d830 __libc_start_main
