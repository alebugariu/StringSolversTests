(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2) (int.to.str tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:12.346683  3207 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.346706  3207 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.346715  3207 UnaryAutomaton.cpp:327] 1
;I0818 17:37:12.353025  3207 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.353055  3207 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.353065  3207 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.417271  3207 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7efe57ea9f5d  google::LogMessage::Fail()
;    @     0x7efe57eac513  google::LogMessage::SendToLog()
;    @     0x7efe57ea9aeb  google::LogMessage::Flush()
;    @     0x7efe57eab45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7efe584cda26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7efe5851b992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe584cc762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7efe58518df0  Vlab::SMT::ToString::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe584ccf86  Vlab::Solver::VariableValueComputer::visitReplace()
;    @     0x7efe58519400  Vlab::SMT::Replace::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe584c77f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7efe58514450  Vlab::SMT::Eq::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe584c5878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7efe585065ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7efe584fd96e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7efe58512b5c  Vlab::SMT::And::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe58506a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7efe584fcd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7efe58510d2a  Vlab::SMT::Assert::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe5851f699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7efe58510067  Vlab::SMT::Script::visit_children()
;    @     0x7efe5841a9e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7efe584fcb35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7efe5851003c  Vlab::SMT::Script::accept()
;    @     0x7efe5841a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7efe584fc7bb  Vlab::Solver::ConstraintSolver::start()
