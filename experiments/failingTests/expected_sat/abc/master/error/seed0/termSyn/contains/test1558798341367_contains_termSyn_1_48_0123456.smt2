(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (int.to.str tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;I0818 17:36:59.872519  3096 UnaryAutomaton.cpp:325] 1
;I0818 17:36:59.872535  3096 UnaryAutomaton.cpp:326] 1
;I0818 17:36:59.872542  3096 UnaryAutomaton.cpp:327] 1
;F0818 17:36:59.896510  3096 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3ecb948f5d  google::LogMessage::Fail()
;    @     0x7f3ecb94b513  google::LogMessage::SendToLog()
;    @     0x7f3ecb948aeb  google::LogMessage::Flush()
;    @     0x7f3ecb94a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3ecc048fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3ecc05e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3ecc05d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3ecbf97102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3ecbf9b07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3ecbeb9dab  std::function<>::operator()()
;    @     0x7f3ecbeb7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3ecbfb5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3ecbeb99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3ecbeb8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3ecbf97a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3ecbfb1b5c  Vlab::SMT::And::accept()
;    @     0x7f3ecbeb99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3ecbf96ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3ecbf9c48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3ecbfb1b5c  Vlab::SMT::And::accept()
;    @     0x7f3ecbeb99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3ecbfa5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3ecbf9d3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3ecbfb1ebe  Vlab::SMT::Or::accept()
;    @     0x7f3ecbeb99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3ecbfa5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3ecbf9bd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3ecbfafd2a  Vlab::SMT::Assert::accept()
;    @     0x7f3ecbeb99ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3ecbfbe699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3ecbfaf067  Vlab::SMT::Script::visit_children()
;    @     0x7f3ecbeb99e0  Vlab::SMT::Visitor::visit_children_of()
