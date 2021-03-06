(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:26.770145  2792 UnaryAutomaton.cpp:325] 1
;I0818 17:36:26.779441  2792 UnaryAutomaton.cpp:326] 1
;I0818 17:36:26.779480  2792 UnaryAutomaton.cpp:327] 1
;F0818 17:36:26.792187  2792 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fabadd9ef5d  google::LogMessage::Fail()
;    @     0x7fabadda1513  google::LogMessage::SendToLog()
;    @     0x7fabadd9eaeb  google::LogMessage::Flush()
;    @     0x7fabadda045e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fabae49efcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fabae4b4842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fabae4b38f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fabae3ed102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fabae3f107b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fabae30fdab  std::function<>::operator()()
;    @     0x7fabae30d844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fabae40bcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fabae30f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae30ebee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fabae3eda21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fabae407b5c  Vlab::SMT::And::accept()
;    @     0x7fabae30f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae3ecca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fabae3f248c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fabae407b5c  Vlab::SMT::And::accept()
;    @     0x7fabae30f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae3fba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fabae3f33e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fabae407ebe  Vlab::SMT::Or::accept()
;    @     0x7fabae30f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae3fba82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fabae3f1d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fabae405d2a  Vlab::SMT::Assert::accept()
;    @     0x7fabae30f9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabae414699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fabae405067  Vlab::SMT::Script::visit_children()
;    @     0x7fabae30f9e0  Vlab::SMT::Visitor::visit_children_of()
