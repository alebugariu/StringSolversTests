(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:14.267920  3227 UnaryAutomaton.cpp:325] 1
;I0818 17:37:14.267964  3227 UnaryAutomaton.cpp:326] 1
;I0818 17:37:14.267978  3227 UnaryAutomaton.cpp:327] 1
;F0818 17:37:14.278369  3227 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f461e8a0f5d  google::LogMessage::Fail()
;    @     0x7f461e8a3513  google::LogMessage::SendToLog()
;    @     0x7f461e8a0aeb  google::LogMessage::Flush()
;    @     0x7f461e8a245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f461eec4a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f461ef12992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461eec3762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f461ef0fdf0  Vlab::SMT::ToString::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461eebe7f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f461ef0b450  Vlab::SMT::Eq::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461eebc878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f461eefd5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f461eef496e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f461ef09b5c  Vlab::SMT::And::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461eefda82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f461eef3d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f461ef07d2a  Vlab::SMT::Assert::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461ef16699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f461ef07067  Vlab::SMT::Script::visit_children()
;    @     0x7f461ee119e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f461eef3b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f461ef0703c  Vlab::SMT::Script::accept()
;    @     0x7f461ee119ad  Vlab::SMT::Visitor::visit()
;    @     0x7f461eef37bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f461edf7b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f461df53830  __libc_start_main
