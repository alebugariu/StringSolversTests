(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:02.063467  3114 UnaryAutomaton.cpp:325] 1
;I0818 17:37:02.067132  3114 UnaryAutomaton.cpp:326] 1
;I0818 17:37:02.067150  3114 UnaryAutomaton.cpp:327] 1
;F0818 17:37:02.105729  3114 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f465f63af5d  google::LogMessage::Fail()
;    @     0x7f465f63d513  google::LogMessage::SendToLog()
;    @     0x7f465f63aaeb  google::LogMessage::Flush()
;    @     0x7f465f63c45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f465fd3afcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f465fd50842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f465fd4f8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f465fc89102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f465fc8d07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f465fbabdab  std::function<>::operator()()
;    @     0x7f465fba9844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f465fca7cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f465fbab9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f465fbaabee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f465fc89a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f465fca3b5c  Vlab::SMT::And::accept()
;    @     0x7f465fbab9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f465fc88ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f465fc8e48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f465fca3b5c  Vlab::SMT::And::accept()
;    @     0x7f465fbab9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f465fc97a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f465fc8f3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f465fca3ebe  Vlab::SMT::Or::accept()
;    @     0x7f465fbab9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f465fc97a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f465fc8dd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f465fca1d2a  Vlab::SMT::Assert::accept()
;    @     0x7f465fbab9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f465fcb0699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f465fca1067  Vlab::SMT::Script::visit_children()
;    @     0x7f465fbab9e0  Vlab::SMT::Visitor::visit_children_of()
