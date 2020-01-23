(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:22.545203  2746 UnaryAutomaton.cpp:325] 1
;I0818 17:36:22.545228  2746 UnaryAutomaton.cpp:326] 1
;I0818 17:36:22.545238  2746 UnaryAutomaton.cpp:327] 1
;F0818 17:36:22.579376  2746 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f1ce42fdf5d  google::LogMessage::Fail()
;    @     0x7f1ce4300513  google::LogMessage::SendToLog()
;    @     0x7f1ce42fdaeb  google::LogMessage::Flush()
;    @     0x7f1ce42ff45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f1ce49fdfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f1ce4a13842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f1ce4a128f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f1ce494c102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f1ce495007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f1ce486edab  std::function<>::operator()()
;    @     0x7f1ce486c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f1ce496acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f1ce486e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1ce486dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f1ce494ca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f1ce4966b5c  Vlab::SMT::And::accept()
;    @     0x7f1ce486e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1ce494bca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f1ce495148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f1ce4966b5c  Vlab::SMT::And::accept()
;    @     0x7f1ce486e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1ce495aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1ce49523e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f1ce4966ebe  Vlab::SMT::Or::accept()
;    @     0x7f1ce486e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1ce495aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f1ce4950d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f1ce4964d2a  Vlab::SMT::Assert::accept()
;    @     0x7f1ce486e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f1ce4973699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f1ce4964067  Vlab::SMT::Script::visit_children()
;    @     0x7f1ce486e9e0  Vlab::SMT::Visitor::visit_children_of()
