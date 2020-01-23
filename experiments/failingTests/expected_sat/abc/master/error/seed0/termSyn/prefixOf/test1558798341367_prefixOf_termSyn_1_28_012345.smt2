(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (= (str.prefixof (int.to.str tmp_int0) (str.++ tmp_str2 tmp_str2)) (str.contains tmp_str2 tmp_str2)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:36:29.677466  2824 UnaryAutomaton.cpp:325] 1
;I0818 17:36:29.677482  2824 UnaryAutomaton.cpp:326] 1
;I0818 17:36:29.677490  2824 UnaryAutomaton.cpp:327] 1
;F0818 17:36:29.689574  2824 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f40f724cf5d  google::LogMessage::Fail()
;    @     0x7f40f724f513  google::LogMessage::SendToLog()
;    @     0x7f40f724caeb  google::LogMessage::Flush()
;    @     0x7f40f724e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f40f794cfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f40f7962842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f40f79618f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f40f789b102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f40f789f07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f40f77bddab  std::function<>::operator()()
;    @     0x7f40f77bb844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f40f78b9cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f40f77bd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f40f77bcbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f40f789ba21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f40f78b5b5c  Vlab::SMT::And::accept()
;    @     0x7f40f77bd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f40f789aca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f40f78a048c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f40f78b5b5c  Vlab::SMT::And::accept()
;    @     0x7f40f77bd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f40f78a9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f40f78a13e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f40f78b5ebe  Vlab::SMT::Or::accept()
;    @     0x7f40f77bd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f40f78a9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f40f789fd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f40f78b3d2a  Vlab::SMT::Assert::accept()
;    @     0x7f40f77bd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f40f78c2699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f40f78b3067  Vlab::SMT::Script::visit_children()
;    @     0x7f40f77bd9e0  Vlab::SMT::Visitor::visit_children_of()
