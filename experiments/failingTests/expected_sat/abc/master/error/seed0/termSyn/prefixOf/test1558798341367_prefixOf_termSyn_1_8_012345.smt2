(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:35.384207  2886 UnaryAutomaton.cpp:325] 1
;I0818 17:36:35.384232  2886 UnaryAutomaton.cpp:326] 1
;I0818 17:36:35.384239  2886 UnaryAutomaton.cpp:327] 1
;F0818 17:36:35.416487  2886 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f817b207f5d  google::LogMessage::Fail()
;    @     0x7f817b20a513  google::LogMessage::SendToLog()
;    @     0x7f817b207aeb  google::LogMessage::Flush()
;    @     0x7f817b20945e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f817b907fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f817b91d842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f817b91c8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f817b856102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f817b85a07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f817b778dab  std::function<>::operator()()
;    @     0x7f817b776844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f817b874cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f817b7789ad  Vlab::SMT::Visitor::visit()
;    @     0x7f817b777bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f817b856a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f817b870b5c  Vlab::SMT::And::accept()
;    @     0x7f817b7789ad  Vlab::SMT::Visitor::visit()
;    @     0x7f817b855ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f817b85b48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f817b870b5c  Vlab::SMT::And::accept()
;    @     0x7f817b7789ad  Vlab::SMT::Visitor::visit()
;    @     0x7f817b864a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f817b85c3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f817b870ebe  Vlab::SMT::Or::accept()
;    @     0x7f817b7789ad  Vlab::SMT::Visitor::visit()
;    @     0x7f817b864a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f817b85ad2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f817b86ed2a  Vlab::SMT::Assert::accept()
;    @     0x7f817b7789ad  Vlab::SMT::Visitor::visit()
;    @     0x7f817b87d699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f817b86e067  Vlab::SMT::Script::visit_children()
;    @     0x7f817b7789e0  Vlab::SMT::Visitor::visit_children_of()
