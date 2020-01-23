(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (= (str.contains (str.++ tmp_str0 tmp_str0) (str.substr tmp_str0 tmp_int4 tmp_int4)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;actual status: not_implemented
;F0818 17:37:09.708248  3178 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f2484df3f5d  google::LogMessage::Fail()
;    @     0x7f2484df6513  google::LogMessage::SendToLog()
;    @     0x7f2484df3aeb  google::LogMessage::Flush()
;    @     0x7f2484df545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f24854f3fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f2485509842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f24855088f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f2485442102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f248544607b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f2485364dab  std::function<>::operator()()
;    @     0x7f2485362844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f2485460cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f24853649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2485363bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f2485442a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f248545cb5c  Vlab::SMT::And::accept()
;    @     0x7f24853649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2485441ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f248544748c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f248545cb5c  Vlab::SMT::And::accept()
;    @     0x7f24853649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2485450a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f24854483e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f248545cebe  Vlab::SMT::Or::accept()
;    @     0x7f24853649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2485450a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f2485446d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f248545ad2a  Vlab::SMT::Assert::accept()
;    @     0x7f24853649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f2485469699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f248545a067  Vlab::SMT::Script::visit_children()
;    @     0x7f24853649e0  Vlab::SMT::Visitor::visit_children_of()
