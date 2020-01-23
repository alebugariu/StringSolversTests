(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (= (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:37.213062  2905 UnaryAutomaton.cpp:325] 1
;I0818 17:36:37.213080  2905 UnaryAutomaton.cpp:326] 1
;I0818 17:36:37.213089  2905 UnaryAutomaton.cpp:327] 1
;F0818 17:36:37.220263  2905 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fed2dc29f5d  google::LogMessage::Fail()
;    @     0x7fed2dc2c513  google::LogMessage::SendToLog()
;    @     0x7fed2dc29aeb  google::LogMessage::Flush()
;    @     0x7fed2dc2b45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fed2e329fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fed2e33f842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fed2e33e8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fed2e278102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fed2e27c07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fed2e19adab  std::function<>::operator()()
;    @     0x7fed2e198844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fed2e296cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fed2e19a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fed2e199bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fed2e278a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fed2e292b5c  Vlab::SMT::And::accept()
;    @     0x7fed2e19a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fed2e277ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fed2e27d48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fed2e292b5c  Vlab::SMT::And::accept()
;    @     0x7fed2e19a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fed2e286a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fed2e27e3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fed2e292ebe  Vlab::SMT::Or::accept()
;    @     0x7fed2e19a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fed2e286a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fed2e27cd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fed2e290d2a  Vlab::SMT::Assert::accept()
;    @     0x7fed2e19a9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fed2e29f699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fed2e290067  Vlab::SMT::Script::visit_children()
;    @     0x7fed2e19a9e0  Vlab::SMT::Visitor::visit_children_of()
