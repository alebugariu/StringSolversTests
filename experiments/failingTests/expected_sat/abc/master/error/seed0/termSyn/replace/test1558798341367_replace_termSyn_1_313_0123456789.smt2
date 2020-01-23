(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.replace tmp_str0 tmp_str0 tmp_str0) (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int8)) (str.at tmp_str0 tmp_int8)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;actual status: not_implemented
;I0818 17:37:16.658332  3249 UnaryAutomaton.cpp:325] 1
;I0818 17:37:16.658354  3249 UnaryAutomaton.cpp:326] 1
;I0818 17:37:16.658362  3249 UnaryAutomaton.cpp:327] 1
;F0818 17:37:16.732532  3249 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f5b7c04af5d  google::LogMessage::Fail()
;    @     0x7f5b7c04d513  google::LogMessage::SendToLog()
;    @     0x7f5b7c04aaeb  google::LogMessage::Flush()
;    @     0x7f5b7c04c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f5b7c66ea26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f5b7c6bc992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c66d762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f5b7c6b9df0  Vlab::SMT::ToString::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c66df86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f5b7c6ba400  Vlab::SMT::Replace::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c6687f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f5b7c6b5450  Vlab::SMT::Eq::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c666878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f5b7c6a75ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f5b7c69e96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f5b7c6b3b5c  Vlab::SMT::And::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c6a7a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f5b7c69dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f5b7c6b1d2a  Vlab::SMT::Assert::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c6c0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f5b7c6b1067  Vlab::SMT::Script::visit_children()
;    @     0x7f5b7c5bb9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f5b7c69db35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f5b7c6b103c  Vlab::SMT::Script::accept()
;    @     0x7f5b7c5bb9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f5b7c69d7bb  Vlab::Solver::ConstraintSolver::start()
