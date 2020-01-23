(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.substr tmp_str2 tmp_int0 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f8873decf46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3390 (TID 0x7f887441e740) from PID 0; stack trace: ***
;    @     0x7f8872e6e4b0 (unknown)
;    @     0x7f8873decf46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f8873e1276c Vlab::SMT::Concat::accept()
;    @     0x7f8873d179ad Vlab::SMT::Visitor::visit()
;    @     0x7f8873e1147b Vlab::SMT::Eq::visit_children()
;    @     0x7f8873d179e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8873de69aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f8873e11450 Vlab::SMT::Eq::accept()
;    @     0x7f8873d179ad Vlab::SMT::Visitor::visit()
;    @     0x7f8873e1cf79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8873e0fb87 Vlab::SMT::And::visit_children()
;    @     0x7f8873d179e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8873de59ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f8873e0fb5c Vlab::SMT::And::accept()
;    @     0x7f8873d179ad Vlab::SMT::Visitor::visit()
;    @     0x7f8873e0dddf Vlab::SMT::Assert::visit_children()
;    @     0x7f8873d179e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8873de5739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f8873e0dd2a Vlab::SMT::Assert::accept()
;    @     0x7f8873d179ad Vlab::SMT::Visitor::visit()
;    @     0x7f8873e1c699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8873e0d067 Vlab::SMT::Script::visit_children()
;    @     0x7f8873d179e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f8873de5703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f8873e0d03c Vlab::SMT::Script::accept()
;    @     0x7f8873d179ad Vlab::SMT::Visitor::visit()
;    @     0x7f8873de5669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f8873df4ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f8873df97a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f8873cfdb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f8872e59830 __libc_start_main
