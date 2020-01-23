(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.replace tmp_str2 tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f4a62eaef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3374 (TID 0x7f4a634e0740) from PID 0; stack trace: ***
;    @     0x7f4a61f304b0 (unknown)
;    @     0x7f4a62eaef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f4a62ed476c Vlab::SMT::Concat::accept()
;    @     0x7f4a62dd99ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a62ed347b Vlab::SMT::Eq::visit_children()
;    @     0x7f4a62dd99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4a62ea89aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f4a62ed3450 Vlab::SMT::Eq::accept()
;    @     0x7f4a62dd99ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a62edef79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4a62ed1b87 Vlab::SMT::And::visit_children()
;    @     0x7f4a62dd99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4a62ea79ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f4a62ed1b5c Vlab::SMT::And::accept()
;    @     0x7f4a62dd99ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a62ecfddf Vlab::SMT::Assert::visit_children()
;    @     0x7f4a62dd99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4a62ea7739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f4a62ecfd2a Vlab::SMT::Assert::accept()
;    @     0x7f4a62dd99ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a62ede699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f4a62ecf067 Vlab::SMT::Script::visit_children()
;    @     0x7f4a62dd99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f4a62ea7703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f4a62ecf03c Vlab::SMT::Script::accept()
;    @     0x7f4a62dd99ad Vlab::SMT::Visitor::visit()
;    @     0x7f4a62ea7669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f4a62eb6ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f4a62ebb7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f4a62dbfb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f4a61f1b830 __libc_start_main
