(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.substr (str.at tmp_str0 tmp_int1) (str.len tmp_str0) (str.indexof tmp_str0 tmp_str0 tmp_int1)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:36:40.081466  2936 UnaryAutomaton.cpp:325] 1
;I0818 17:36:40.081509  2936 UnaryAutomaton.cpp:326] 1
;I0818 17:36:40.081527  2936 UnaryAutomaton.cpp:327] 1
;F0818 17:36:40.087179  2936 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f519af42f5d  google::LogMessage::Fail()
;    @     0x7f519af45513  google::LogMessage::SendToLog()
;    @     0x7f519af42aeb  google::LogMessage::Flush()
;    @     0x7f519af4445e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f519b566a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f519b5b4992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b565762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f519b5b1df0  Vlab::SMT::ToString::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b5607f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f519b5ad450  Vlab::SMT::Eq::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b55e878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f519b59f5ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f519b59696e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f519b5abb5c  Vlab::SMT::And::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b59fa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f519b595d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f519b5a9d2a  Vlab::SMT::Assert::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b5b8699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f519b5a9067  Vlab::SMT::Script::visit_children()
;    @     0x7f519b4b39e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f519b595b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f519b5a903c  Vlab::SMT::Script::accept()
;    @     0x7f519b4b39ad  Vlab::SMT::Visitor::visit()
;    @     0x7f519b5957bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f519b499b84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f519a5f5830  __libc_start_main
