(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.++ tmp_str12 tmp_str12)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str12 = 
;actual status: not_implemented
;PC: @     0x7f276576ff46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;*** SIGSEGV (@0x0) received by PID 3350 (TID 0x7f2765da1740) from PID 0; stack trace: ***
;    @     0x7f27647f14b0 (unknown)
;    @     0x7f276576ff46 Vlab::Solver::StringFormulaGenerator::visitConcat()
;    @     0x7f276579576c Vlab::SMT::Concat::accept()
;    @     0x7f276569a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f276579447b Vlab::SMT::Eq::visit_children()
;    @     0x7f276569a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f27657699aa Vlab::Solver::StringFormulaGenerator::visitEq()
;    @     0x7f2765794450 Vlab::SMT::Eq::accept()
;    @     0x7f276569a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f276579ff79 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2765792b87 Vlab::SMT::And::visit_children()
;    @     0x7f276569a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f27657689ed Vlab::Solver::StringFormulaGenerator::visitAnd()
;    @     0x7f2765792b5c Vlab::SMT::And::accept()
;    @     0x7f276569a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2765790ddf Vlab::SMT::Assert::visit_children()
;    @     0x7f276569a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2765768739 Vlab::Solver::StringFormulaGenerator::visitAssert()
;    @     0x7f2765790d2a Vlab::SMT::Assert::accept()
;    @     0x7f276569a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f276579f699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f2765790067 Vlab::SMT::Script::visit_children()
;    @     0x7f276569a9e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f2765768703 Vlab::Solver::StringFormulaGenerator::visitScript()
;    @     0x7f276579003c Vlab::SMT::Script::accept()
;    @     0x7f276569a9ad Vlab::SMT::Visitor::visit()
;    @     0x7f2765768669 Vlab::Solver::StringFormulaGenerator::start()
;    @     0x7f2765777ecd Vlab::Solver::StringConstraintSolver::collect_string_constraint_info()
;    @     0x7f276577c7a4 Vlab::Solver::ConstraintSolver::start()
;    @     0x7f2765680b84 Vlab::Driver::Solve()
;    @           0x410110 main
;    @     0x7f27647dc830 __libc_start_main
