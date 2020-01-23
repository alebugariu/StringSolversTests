(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (= (str.contains (str.replace tmp_str0 tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int5 tmp_int5)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;actual status: not_implemented
;F0818 17:37:07.889210  3160 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fa221e5cf5d  google::LogMessage::Fail()
;    @     0x7fa221e5f513  google::LogMessage::SendToLog()
;    @     0x7fa221e5caeb  google::LogMessage::Flush()
;    @     0x7fa221e5e45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fa22255cfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fa222572842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fa2225718f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fa2224ab102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fa2224af07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fa2223cddab  std::function<>::operator()()
;    @     0x7fa2223cb844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fa2224c9cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fa2223cd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa2223ccbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fa2224aba21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fa2224c5b5c  Vlab::SMT::And::accept()
;    @     0x7fa2223cd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa2224aaca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fa2224b048c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fa2224c5b5c  Vlab::SMT::And::accept()
;    @     0x7fa2223cd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa2224b9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa2224b13e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fa2224c5ebe  Vlab::SMT::Or::accept()
;    @     0x7fa2223cd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa2224b9a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fa2224afd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fa2224c3d2a  Vlab::SMT::Assert::accept()
;    @     0x7fa2223cd9ad  Vlab::SMT::Visitor::visit()
;    @     0x7fa2224d2699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fa2224c3067  Vlab::SMT::Script::visit_children()
;    @     0x7fa2223cd9e0  Vlab::SMT::Visitor::visit_children_of()
