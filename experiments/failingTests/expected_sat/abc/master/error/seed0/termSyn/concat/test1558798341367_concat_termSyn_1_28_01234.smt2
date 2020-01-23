(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (int.to.str tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;PC: @     0x7f14342aef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3363 (TID 0x7f14348e0740) from PID 0; stack trace: ***
;    @     0x7f14333304b0 (unknown)
;    @     0x7f14342aef46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f14342d476c Vlab::SMT::Concat::accept()
;    @     0x7f14341d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f14342d347b Vlab::SMT::Eq::visit_children()
;    @     0x7f14341d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f14342a89aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f14342d3450 Vlab::SMT::Eq::accept()
;    @     0x7f14341d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f14342def79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f14342d1b87 Vlab::SMT::And::visit_children()
;    @     0x7f14341d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f14342a79ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f14342d1b5c Vlab::SMT::And::accept()
;    @     0x7f14341d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f14342cfddf Vlab::SMT::Assert::visit_children()
;    @     0x7f14341d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f14342a7739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f14342cfd2a Vlab::SMT::Assert::accept()
;    @     0x7f14341d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f14342de699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f14342cf067 Vlab::SMT::Script::visit_children()
;    @     0x7f14341d99e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f14342a7703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f14342cf03c Vlab::SMT::Script::accept()
;    @     0x7f14341d99ad Vlab::SMT::Visitor::visit()
;    @     0x7f14342a7669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f14342b6ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f14342bb7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f14341bfb84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f143331b830 __libc_start_main
