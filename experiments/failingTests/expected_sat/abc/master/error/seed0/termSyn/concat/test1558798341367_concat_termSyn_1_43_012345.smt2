(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7ff0138d0f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3393 (TID 0x7ff013f02740) from PID 0; stack trace: ***
;    @     0x7ff0129524b0 (unknown)
;    @     0x7ff0138d0f46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7ff0138f676c Vlab::SMT::Concat::accept()
;    @     0x7ff0137fb9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff0138f547b Vlab::SMT::Eq::visit_children()
;    @     0x7ff0137fb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff0138ca9aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7ff0138f5450 Vlab::SMT::Eq::accept()
;    @     0x7ff0137fb9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff013900f79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff0138f3b87 Vlab::SMT::And::visit_children()
;    @     0x7ff0137fb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff0138c99ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7ff0138f3b5c Vlab::SMT::And::accept()
;    @     0x7ff0137fb9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff0138f1ddf Vlab::SMT::Assert::visit_children()
;    @     0x7ff0137fb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff0138c9739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7ff0138f1d2a Vlab::SMT::Assert::accept()
;    @     0x7ff0137fb9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff013900699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff0138f1067 Vlab::SMT::Script::visit_children()
;    @     0x7ff0137fb9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff0138c9703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7ff0138f103c Vlab::SMT::Script::accept()
;    @     0x7ff0137fb9ad Vlab::SMT::Visitor::visit()
;    @     0x7ff0138c9669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7ff0138d8ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7ff0138dd7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7ff0137e1b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7ff01293d830 __libc_start_main
