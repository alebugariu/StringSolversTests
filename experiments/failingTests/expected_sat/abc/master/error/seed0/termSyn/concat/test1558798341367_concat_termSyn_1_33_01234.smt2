(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str9 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.at tmp_str9 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;actual status: not_implemented
;PC: @     0x7f960c254f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3359 (TID 0x7f960c886740) from PID 0; stack trace: ***
;    @     0x7f960b2d64b0 (unknown)
;    @     0x7f960c254f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f960c27a76c Vlab::SMT::Concat::accept()
;    @     0x7f960c17f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f960c27947b Vlab::SMT::Eq::visit_children()
;    @     0x7f960c17f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f960c24e9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f960c279450 Vlab::SMT::Eq::accept()
;    @     0x7f960c17f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f960c284f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f960c277b87 Vlab::SMT::And::visit_children()
;    @     0x7f960c17f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f960c24d9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f960c277b5c Vlab::SMT::And::accept()
;    @     0x7f960c17f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f960c275ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f960c17f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f960c24d739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f960c275d2a Vlab::SMT::Assert::accept()
;    @     0x7f960c17f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f960c284699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f960c275067 Vlab::SMT::Script::visit_children()
;    @     0x7f960c17f9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f960c24d703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f960c27503c Vlab::SMT::Script::accept()
;    @     0x7f960c17f9ad Vlab::SMT::Visitor::visit()
;    @     0x7f960c24d669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f960c25cecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f960c2617a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f960c165b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f960b2c1830 __libc_start_main
