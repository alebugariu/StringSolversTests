(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.indexof (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4) (str.indexof tmp_str0 tmp_str0 tmp_int4)) (str.to.int tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;*** Aborted at 1566142602 (unix time) try "date -d @1566142602" if you are using GNU date ***
;PC: @     0x7fca9687fbd6 Vlab::Solver::Value::getType()
;*** SIGSEGV (@0x8) received by PID 2961 (TID 0x7fca96f7f740) from PID 8; stack trace: ***
;    @     0x7fca959cf4b0 (unknown)
;    @     0x7fca9687fbd6 Vlab::Solver::Value::getType()
;    @     0x7fca96961f32 Vlab::Solver::ConstraintSolver::visitSubString()
;    @     0x7fca96976310 Vlab::SMT::SubString::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca96964a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fca9695b052 Vlab::Solver::ConstraintSolver::visitLet()
;    @     0x7fca969707e2 Vlab::SMT::Let::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca9697247b Vlab::SMT::Eq::visit_children()
;    @     0x7fca968789e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fca969646a3 Vlab::Solver::ConstraintSolver::visit_children_of()
;    @     0x7fca9695d77b Vlab::Solver::ConstraintSolver::visitEq()
;    @     0x7fca96972450 Vlab::SMT::Eq::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca96964a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fca9695b8c1 Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fca96970b5c Vlab::SMT::And::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca96964a82 Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fca9695ad2c Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fca9696ed2a Vlab::SMT::Assert::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca9697d699 Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fca9696e067 Vlab::SMT::Script::visit_children()
;    @     0x7fca968789e0 Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fca9695ab35 Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fca9696e03c Vlab::SMT::Script::accept()
;    @     0x7fca968789ad Vlab::SMT::Visitor::visit()
;    @     0x7fca9695a7bb Vlab::Solver::ConstraintSolver::start()
;    @     0x7fca9685eb84 Vlab::Driver::Solve()
;    @           0x410110 main
