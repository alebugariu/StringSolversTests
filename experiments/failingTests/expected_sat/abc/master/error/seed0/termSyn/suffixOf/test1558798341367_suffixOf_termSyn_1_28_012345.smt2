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
;I0818 17:36:20.645946  2726 UnaryAutomaton.cpp:325] 1
;I0818 17:36:20.645964  2726 UnaryAutomaton.cpp:326] 1
;I0818 17:36:20.645972  2726 UnaryAutomaton.cpp:327] 1
;F0818 17:36:20.656010  2726 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str2)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f8ee0badf5d  google::LogMessage::Fail()
;    @     0x7f8ee0bb0513  google::LogMessage::SendToLog()
;    @     0x7f8ee0badaeb  google::LogMessage::Flush()
;    @     0x7f8ee0baf45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f8ee12adfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f8ee12c3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f8ee12c28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f8ee11fc102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f8ee120007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f8ee111edab  std::function<>::operator()()
;    @     0x7f8ee111c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f8ee121acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f8ee111e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ee111dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f8ee11fca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f8ee1216b5c  Vlab::SMT::And::accept()
;    @     0x7f8ee111e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ee11fbca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f8ee120148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f8ee1216b5c  Vlab::SMT::And::accept()
;    @     0x7f8ee111e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ee120aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8ee12023e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f8ee1216ebe  Vlab::SMT::Or::accept()
;    @     0x7f8ee111e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ee120aa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f8ee1200d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f8ee1214d2a  Vlab::SMT::Assert::accept()
;    @     0x7f8ee111e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f8ee1223699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f8ee1214067  Vlab::SMT::Script::visit_children()
;    @     0x7f8ee111e9e0  Vlab::SMT::Visitor::visit_children_of()
