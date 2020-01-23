(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.replace tmp_str0 tmp_str0 tmp_str0)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:24.048326  2762 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3fc10e1f5d  google::LogMessage::Fail()
;    @     0x7f3fc10e4513  google::LogMessage::SendToLog()
;    @     0x7f3fc10e1aeb  google::LogMessage::Flush()
;    @     0x7f3fc10e345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3fc17e1fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3fc17f7842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3fc17f68f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3fc1730102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3fc173407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3fc1652dab  std::function<>::operator()()
;    @     0x7f3fc1650844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3fc174ecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3fc16529ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fc1651bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3fc1730a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3fc174ab5c  Vlab::SMT::And::accept()
;    @     0x7f3fc16529ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fc172fca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3fc173548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3fc174ab5c  Vlab::SMT::And::accept()
;    @     0x7f3fc16529ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fc173ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3fc17363e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3fc174aebe  Vlab::SMT::Or::accept()
;    @     0x7f3fc16529ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fc173ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3fc1734d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3fc1748d2a  Vlab::SMT::Assert::accept()
;    @     0x7f3fc16529ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3fc1757699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3fc1748067  Vlab::SMT::Script::visit_children()
;    @     0x7f3fc16529e0  Vlab::SMT::Visitor::visit_children_of()
