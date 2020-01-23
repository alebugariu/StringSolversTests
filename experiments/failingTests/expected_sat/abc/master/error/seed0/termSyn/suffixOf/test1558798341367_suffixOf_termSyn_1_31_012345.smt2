(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.suffixof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:21.223060  2732 UnaryAutomaton.cpp:325] 1
;I0818 17:36:21.223076  2732 UnaryAutomaton.cpp:326] 1
;I0818 17:36:21.223083  2732 UnaryAutomaton.cpp:327] 1
;F0818 17:36:21.243208  2732 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7eff0c620f5d  google::LogMessage::Fail()
;    @     0x7eff0c623513  google::LogMessage::SendToLog()
;    @     0x7eff0c620aeb  google::LogMessage::Flush()
;    @     0x7eff0c62245e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7eff0cd20fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7eff0cd36842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7eff0cd358f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7eff0cc6f102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7eff0cc7307b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7eff0cb91dab  std::function<>::operator()()
;    @     0x7eff0cb8f844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7eff0cc8dcb6  Vlab::SMT::NotBegins::accept()
;    @     0x7eff0cb919ad  Vlab::SMT::Visitor::visit()
;    @     0x7eff0cb90bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7eff0cc6fa21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7eff0cc89b5c  Vlab::SMT::And::accept()
;    @     0x7eff0cb919ad  Vlab::SMT::Visitor::visit()
;    @     0x7eff0cc6eca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7eff0cc7448c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7eff0cc89b5c  Vlab::SMT::And::accept()
;    @     0x7eff0cb919ad  Vlab::SMT::Visitor::visit()
;    @     0x7eff0cc7da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7eff0cc753e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7eff0cc89ebe  Vlab::SMT::Or::accept()
;    @     0x7eff0cb919ad  Vlab::SMT::Visitor::visit()
;    @     0x7eff0cc7da82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7eff0cc73d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7eff0cc87d2a  Vlab::SMT::Assert::accept()
;    @     0x7eff0cb919ad  Vlab::SMT::Visitor::visit()
;    @     0x7eff0cc96699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7eff0cc87067  Vlab::SMT::Script::visit_children()
;    @     0x7eff0cb919e0  Vlab::SMT::Visitor::visit_children_of()
