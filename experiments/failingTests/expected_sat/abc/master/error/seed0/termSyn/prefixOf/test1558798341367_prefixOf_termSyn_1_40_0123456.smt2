(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:35.219597  2882 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.225322  2882 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.225347  2882 UnaryAutomaton.cpp:327] 1
;F0818 17:36:35.239449  2882 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f65c7357f5d  google::LogMessage::Fail()
;    @     0x7f65c735a513  google::LogMessage::SendToLog()
;    @     0x7f65c7357aeb  google::LogMessage::Flush()
;    @     0x7f65c735945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f65c7a57fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f65c7a6d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f65c7a6c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f65c79a6102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f65c79aa07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f65c78c8dab  std::function<>::operator()()
;    @     0x7f65c78c6844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f65c79c4cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f65c78c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f65c78c7bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f65c79a6a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f65c79c0b5c  Vlab::SMT::And::accept()
;    @     0x7f65c78c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f65c79a5ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f65c79ab48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f65c79c0b5c  Vlab::SMT::And::accept()
;    @     0x7f65c78c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f65c79b4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f65c79ac3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f65c79c0ebe  Vlab::SMT::Or::accept()
;    @     0x7f65c78c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f65c79b4a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f65c79aad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f65c79bed2a  Vlab::SMT::Assert::accept()
;    @     0x7f65c78c89ad  Vlab::SMT::Visitor::visit()
;    @     0x7f65c79cd699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f65c79be067  Vlab::SMT::Script::visit_children()
;    @     0x7f65c78c89e0  Vlab::SMT::Visitor::visit_children_of()
