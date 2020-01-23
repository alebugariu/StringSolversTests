(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.prefixof (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:32.493059  2854 UnaryAutomaton.cpp:325] 1
;I0818 17:36:32.493077  2854 UnaryAutomaton.cpp:326] 1
;I0818 17:36:32.493083  2854 UnaryAutomaton.cpp:327] 1
;F0818 17:36:32.560729  2854 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7feecb8c1f5d  google::LogMessage::Fail()
;    @     0x7feecb8c4513  google::LogMessage::SendToLog()
;    @     0x7feecb8c1aeb  google::LogMessage::Flush()
;    @     0x7feecb8c345e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7feecbfc1fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7feecbfd7842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7feecbfd68f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7feecbf10102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7feecbf1407b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7feecbe32dab  std::function<>::operator()()
;    @     0x7feecbe30844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7feecbf2ecb6  Vlab::SMT::NotBegins::accept()
;    @     0x7feecbe329ad  Vlab::SMT::Visitor::visit()
;    @     0x7feecbe31bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7feecbf10a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7feecbf2ab5c  Vlab::SMT::And::accept()
;    @     0x7feecbe329ad  Vlab::SMT::Visitor::visit()
;    @     0x7feecbf0fca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7feecbf1548c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7feecbf2ab5c  Vlab::SMT::And::accept()
;    @     0x7feecbe329ad  Vlab::SMT::Visitor::visit()
;    @     0x7feecbf1ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7feecbf163e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7feecbf2aebe  Vlab::SMT::Or::accept()
;    @     0x7feecbe329ad  Vlab::SMT::Visitor::visit()
;    @     0x7feecbf1ea82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7feecbf14d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7feecbf28d2a  Vlab::SMT::Assert::accept()
;    @     0x7feecbe329ad  Vlab::SMT::Visitor::visit()
;    @     0x7feecbf37699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7feecbf28067  Vlab::SMT::Script::visit_children()
;    @     0x7feecbe329e0  Vlab::SMT::Visitor::visit_children_of()
