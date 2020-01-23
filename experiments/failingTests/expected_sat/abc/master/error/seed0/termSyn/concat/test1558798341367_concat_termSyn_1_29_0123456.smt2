(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.replace tmp_str2 tmp_str2 tmp_str10)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str10 = 
;actual status: not_implemented
;PC: @     0x7f9107322f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3357 (TID 0x7f9107954740) from PID 0; stack trace: ***
;    @     0x7f91063a44b0 (unknown)
;    @     0x7f9107322f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f910734876c Vlab::SMT::Concat::accept()
;    @     0x7f910724d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f910734747b Vlab::SMT::Eq::visit_children()
;    @     0x7f910724d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f910731c9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f9107347450 Vlab::SMT::Eq::accept()
;    @     0x7f910724d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f9107352f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9107345b87 Vlab::SMT::And::visit_children()
;    @     0x7f910724d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f910731b9ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f9107345b5c Vlab::SMT::And::accept()
;    @     0x7f910724d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f9107343ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f910724d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f910731b739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f9107343d2a Vlab::SMT::Assert::accept()
;    @     0x7f910724d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f9107352699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f9107343067 Vlab::SMT::Script::visit_children()
;    @     0x7f910724d9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f910731b703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f910734303c Vlab::SMT::Script::accept()
;    @     0x7f910724d9ad Vlab::SMT::Visitor::visit()
;    @     0x7f910731b669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f910732aecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f910732f7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f9107233b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f910638f830 __libc_start_main
