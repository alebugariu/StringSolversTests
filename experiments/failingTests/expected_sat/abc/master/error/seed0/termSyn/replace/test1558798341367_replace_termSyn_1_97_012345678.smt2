(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.at tmp_str0 tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:15.082540  3235 UnaryAutomaton.cpp:325] 1
;I0818 17:37:15.082588  3235 UnaryAutomaton.cpp:326] 1
;I0818 17:37:15.082597  3235 UnaryAutomaton.cpp:327] 1
;F0818 17:37:15.135468  3235 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7ff83cbb7f5d  google::LogMessage::Fail()
;    @     0x7ff83cbba513  google::LogMessage::SendToLog()
;    @     0x7ff83cbb7aeb  google::LogMessage::Flush()
;    @     0x7ff83cbb945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff83d1dba26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7ff83d229992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d1da762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7ff83d226df0  Vlab::SMT::ToString::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d1daf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7ff83d227400  Vlab::SMT::Replace::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d1d57f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7ff83d222450  Vlab::SMT::Eq::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d1d3878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7ff83d2145ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7ff83d20b96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff83d220b5c  Vlab::SMT::And::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d214a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff83d20ad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff83d21ed2a  Vlab::SMT::Assert::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d22d699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff83d21e067  Vlab::SMT::Script::visit_children()
;    @     0x7ff83d1289e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7ff83d20ab35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7ff83d21e03c  Vlab::SMT::Script::accept()
;    @     0x7ff83d1289ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff83d20a7bb  Vlab::Solver::ConstraintSolver::start()
