(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.replace tmp_str2 tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:28.575727  2812 UnaryAutomaton.cpp:325] 1
;I0818 17:36:28.575745  2812 UnaryAutomaton.cpp:326] 1
;I0818 17:36:28.575753  2812 UnaryAutomaton.cpp:327] 1
;F0818 17:36:28.599700  2812 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7faf4f570f5d  google::LogMessage::Fail()
;    @     0x7faf4f573513  google::LogMessage::SendToLog()
;    @     0x7faf4f570aeb  google::LogMessage::Flush()
;    @     0x7faf4f57245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7faf4fc70fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7faf4fc86842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7faf4fc858f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7faf4fbbf102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7faf4fbc307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7faf4fae1dab  std::function<>::operator()()
;    @     0x7faf4fadf844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7faf4fbddcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7faf4fae19ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf4fae0bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7faf4fbbfa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7faf4fbd9b5c  Vlab::SMT::And::accept()
;    @     0x7faf4fae19ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf4fbbeca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7faf4fbc448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7faf4fbd9b5c  Vlab::SMT::And::accept()
;    @     0x7faf4fae19ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf4fbcda82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faf4fbc53e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7faf4fbd9ebe  Vlab::SMT::Or::accept()
;    @     0x7faf4fae19ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf4fbcda82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7faf4fbc3d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7faf4fbd7d2a  Vlab::SMT::Assert::accept()
;    @     0x7faf4fae19ad  Vlab::SMT::Visitor::visit()
;    @     0x7faf4fbe6699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7faf4fbd7067  Vlab::SMT::Script::visit_children()
;    @     0x7faf4fae19e0  Vlab::SMT::Visitor::visit_children_of()
