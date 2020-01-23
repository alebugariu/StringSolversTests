(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2) (int.to.str tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:14.662575  3231 UnaryAutomaton.cpp:325] 1
;I0818 17:37:14.662595  3231 UnaryAutomaton.cpp:326] 1
;I0818 17:37:14.662602  3231 UnaryAutomaton.cpp:327] 1
;I0818 17:37:14.685462  3231 UnaryAutomaton.cpp:325] 1
;I0818 17:37:14.687666  3231 UnaryAutomaton.cpp:326] 1
;I0818 17:37:14.687682  3231 UnaryAutomaton.cpp:327] 1
;F0818 17:37:14.737646  3231 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f7a7fdc5f5d  google::LogMessage::Fail()
;    @     0x7f7a7fdc8513  google::LogMessage::SendToLog()
;    @     0x7f7a7fdc5aeb  google::LogMessage::Flush()
;    @     0x7f7a7fdc745e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f7a803e9a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f7a80437992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a803e8762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f7a80434df0  Vlab::SMT::ToString::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a803e8f86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7f7a80435400  Vlab::SMT::Replace::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a803e37f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f7a80430450  Vlab::SMT::Eq::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a803e1878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f7a804225ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f7a8041996e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f7a8042eb5c  Vlab::SMT::And::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a80422a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f7a80418d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f7a8042cd2a  Vlab::SMT::Assert::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a8043b699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f7a8042c067  Vlab::SMT::Script::visit_children()
;    @     0x7f7a803369e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f7a80418b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f7a8042c03c  Vlab::SMT::Script::accept()
;    @     0x7f7a803369ad  Vlab::SMT::Visitor::visit()
;    @     0x7f7a804187bb  Vlab::Solver::ConstraintSolver::start()
