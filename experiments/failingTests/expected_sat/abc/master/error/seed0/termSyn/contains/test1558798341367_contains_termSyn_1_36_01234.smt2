(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (int.to.str tmp_int0)) (str.contains tmp_str9 tmp_str9)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;actual status: not_implemented
;I0818 17:37:08.132632  3162 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.132650  3162 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.132658  3162 UnaryAutomaton.cpp:327] 1
;I0818 17:37:08.139125  3162 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.139166  3162 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.139183  3162 UnaryAutomaton.cpp:327] 1
;I0818 17:37:08.177991  3162 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.178030  3162 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.178041  3162 UnaryAutomaton.cpp:327] 1
;I0818 17:37:08.183771  3162 UnaryAutomaton.cpp:325] 1
;I0818 17:37:08.183806  3162 UnaryAutomaton.cpp:326] 1
;I0818 17:37:08.183815  3162 UnaryAutomaton.cpp:327] 1
;F0818 17:37:08.190518  3162 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str9)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fc9d218cf5d  google::LogMessage::Fail()
;    @     0x7fc9d218f513  google::LogMessage::SendToLog()
;    @     0x7fc9d218caeb  google::LogMessage::Flush()
;    @     0x7fc9d218e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fc9d288cfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fc9d28a2842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fc9d28a18f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fc9d27db102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fc9d27df07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fc9d26fddab  std::function<>::operator()()
;    @     0x7fc9d26fb844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fc9d27f9cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fc9d26fd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc9d26fcbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fc9d27dba21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fc9d27f5b5c  Vlab::SMT::And::accept()
;    @     0x7fc9d26fd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc9d27daca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fc9d27e048c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fc9d27f5b5c  Vlab::SMT::And::accept()
;    @     0x7fc9d26fd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc9d27e9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc9d27e13e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fc9d27f5ebe  Vlab::SMT::Or::accept()
;    @     0x7fc9d26fd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc9d27e9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fc9d27dfd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fc9d27f3d2a  Vlab::SMT::Assert::accept()
;    @     0x7fc9d26fd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fc9d2802699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fc9d27f3067  Vlab::SMT::Script::visit_children()
;    @     0x7fc9d26fd9e0  Vlab::SMT::Visitor::visit_children_of()
