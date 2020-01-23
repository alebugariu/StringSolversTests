(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.at tmp_str2 tmp_int14)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_int14 = 0
;actual status: not_implemented
;PC: @     0x7f9ffe5b7f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3385 (TID 0x7f9ffebe9740) from PID 0; stack trace: ***
;    @     0x7f9ffd6394b0 (unknown)
;    @     0x7f9ffe5b7f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f9ffe5dd76c Vlab::SMT::Concat::accept()
;    @     0x7f9ffe4e29ad Vlab::SMT::Visitor::visit()
;    @     0x7f9ffe5dc47b Vlab::SMT::Eq::visit_children()
;    @     0x7f9ffe4e29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9ffe5b19aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f9ffe5dc450 Vlab::SMT::Eq::accept()
;    @     0x7f9ffe4e29ad Vlab::SMT::Visitor::visit()
;    @     0x7f9ffe5e7f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9ffe5dab87 Vlab::SMT::And::visit_children()
;    @     0x7f9ffe4e29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9ffe5b09ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f9ffe5dab5c Vlab::SMT::And::accept()
;    @     0x7f9ffe4e29ad Vlab::SMT::Visitor::visit()
;    @     0x7f9ffe5d8ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f9ffe4e29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9ffe5b0739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f9ffe5d8d2a Vlab::SMT::Assert::accept()
;    @     0x7f9ffe4e29ad Vlab::SMT::Visitor::visit()
;    @     0x7f9ffe5e7699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9ffe5d8067 Vlab::SMT::Script::visit_children()
;    @     0x7f9ffe4e29e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9ffe5b0703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f9ffe5d803c Vlab::SMT::Script::accept()
;    @     0x7f9ffe4e29ad Vlab::SMT::Visitor::visit()
;    @     0x7f9ffe5b0669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f9ffe5bfecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f9ffe5c47a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f9ffe4c8b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f9ffd624830 __libc_start_main
