(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.contains (int.to.str tmp_int0) (str.at tmp_str2 tmp_int0)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:05.948967  3146 UnaryAutomaton.cpp:325] 1
;I0818 17:37:05.948985  3146 UnaryAutomaton.cpp:326] 1
;I0818 17:37:05.948992  3146 UnaryAutomaton.cpp:327] 1
;F0818 17:37:05.992725  3146 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f36b0942f5d  google::LogMessage::Fail()
;    @     0x7f36b0945513  google::LogMessage::SendToLog()
;    @     0x7f36b0942aeb  google::LogMessage::Flush()
;    @     0x7f36b094445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f36b1042fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f36b1058842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f36b10578f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f36b0f91102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f36b0f9507b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f36b0eb3dab  std::function<>::operator()()
;    @     0x7f36b0eb1844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f36b0fafcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f36b0eb39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f36b0eb2bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f36b0f91a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f36b0fabb5c  Vlab::SMT::And::accept()
;    @     0x7f36b0eb39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f36b0f90ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f36b0f9648c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f36b0fabb5c  Vlab::SMT::And::accept()
;    @     0x7f36b0eb39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f36b0f9fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f36b0f973e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f36b0fabebe  Vlab::SMT::Or::accept()
;    @     0x7f36b0eb39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f36b0f9fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f36b0f95d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f36b0fa9d2a  Vlab::SMT::Assert::accept()
;    @     0x7f36b0eb39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f36b0fb8699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f36b0fa9067  Vlab::SMT::Script::visit_children()
;    @     0x7f36b0eb39e0  Vlab::SMT::Visitor::visit_children_of()
